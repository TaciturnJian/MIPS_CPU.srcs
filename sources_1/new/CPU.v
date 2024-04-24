`timescale 1ns / 1ps


/*
# Code Rules

## Naming

模块、函数等需要被他人调用的变量 input output 首字母需要大写，可以应用全大写和大驼峰
内部变量使用小写字母，可以应用全小写和小驼峰

TB 想咋写咋写，反正没人帮我 DEBUG

## Comments

使用 doxygen 可以识别的格式即可，优先使用 /// @brief

*/

module CPU(input Clock, input NReset);
    wire [31: 0] address_PC_in, address_PC_out, address_PCAdd4_out;
    PC check_reset_address(Clock, NReset, address_PC_in, address_PC_out);
    PCAdd4 add_4_to_pc(address_PC_out, address_PCAdd4_out);

    wire [31: 0] instruction;
    InstructionMemory get_instruction(address_PC_out, instruction);
    wire [5: 0] instruction_operator = instruction[31: 26];
    wire [5: 0] instruction_func = instruction[5: 0];
    wire [15: 0] instruction_immediate = instruction[15: 0];
    wire [4: 0] instruction_rs = instruction[25: 21];
    wire [4: 0] instruction_rt = instruction[20: 16];
    wire [4: 0] instruction_rd = instruction[15: 11];
    wire [25: 0] instruction_j_address = instruction[25: 0];
    
    wire [1: 0] pc_selector;
    wire [3: 0] alu_control;
    wire control_jump, control_shift, control_from_reg_to_reg, 
        control_write_register, 
        control_rt_not_rd, control_rt_not_imm;
    wire alu_result_is_zero;
    ControlUnit get_control_signals(
        instruction_operator, instruction_func, 
        alu_result_is_zero, control_rt_not_rd, control_signed, control_write_register,
        control_rt_not_imm, alu_control, control_write_memory, pc_selector, 
        control_from_reg_to_reg, control_shift, control_jump);

    wire [31: 0] ex_immediate;
    EXT16T32 extern_immediate_with_signed_control(instruction_immediate, control_signed, ex_immediate);

    wire [4: 0] temp_reg_id;
    MUX2T1X5 select_rt_rd_by_control(instruction_rd, instruction_rt, control_rt_not_rd, temp_reg_id);
    wire [4: 0] reg_id_to_write;
    MUX2T1X5 check_cancel_reg_id_by_control(temp_reg_id, 31, control_jump, reg_id_to_write);

    wire [31: 0] reg_rs_value, reg_rt_value, data_write;
    RegFile get_reg_value_by_id_and_write_data_to_register(
        instruction_rs, instruction_rt, 
        data_write, reg_id_to_write, control_write_register, 
        Clock, NReset, 
        reg_rs_value, reg_rt_value
    );

    wire [31: 0] alu_x;
    MUX2T1X32 select_alu_x(reg_rs_value, instruction, control_shift, alu_x);
    wire [31: 0] alu_y;
    MUX2T1X32 select_alu_y(ex_immediate, reg_rt_value, control_rt_not_imm, alu_y);
    wire [31: 0] alu_result;
    ALU get_alu_result(alu_x, alu_y, alu_control, alu_result, alu_result_is_zero);
    wire [31: 0] data_out_from_memory;
    DataMemory get_data_and_write_alu_to_memory(alu_result, reg_rt_value, Clock, control_write_memory, data_out_from_memory);
    wire [31: 0] temp_data_from_memory;
    MUX2T1X32 select_data_alu_by_control(data_out_from_memory, alu_result, control_from_reg_to_reg, temp_data_from_memory);
    MUX2T1X32 get_data_to_write(temp_data_from_memory, address_PCAdd4_out, control_jump, data_write);

    wire [31: 0] address_from_ex_imm = ex_immediate << 2;

    wire cla_up_out, locally_jump_address;
    CLA32 cla(address_PCAdd4_out, address_from_ex_imm, 0, locally_jump_address, cla_up_out);

    wire [31: 0] instruction_shift_result;
    SHIFT26T32 shift_j_address_to_full_address(instruction_j_address, address_PCAdd4_out, instruction_shift_result);
    MUX4T1X32 select_next_PC_in(
        address_PCAdd4_out, locally_jump_address, reg_rs_value, instruction_shift_result, 
        pc_selector, 
        address_PC_in
    );

endmodule
