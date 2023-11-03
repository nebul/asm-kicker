InstructionLookupTable = {
    [0x90] = {mnemonic = "NOP", operands = {}},
    -- Add more opcodes here
}

function lookupInstruction(opcode)
    return InstructionLookupTable[opcode]
end
