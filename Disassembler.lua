require("BinaryFileReader")
require("Instruction")
require("InstructionLookupTable")

Disassembler = {}
Disassembler.__index = Disassembler

function Disassembler:new()
    local self = setmetatable({}, Disassembler)
    self.binaryFile = BinaryFileReader:new()
    self.instructions = {}
    return self
end

function Disassembler:disassemble(filePath)
    self.binaryFile:readFile(filePath)
    local offset = 0
    while offset < self.binaryFile:size() do
        local byteCode = self.binaryFile:readByte(offset)
        local lookup = lookupInstruction(byteCode)
        local instruction = Instruction:new(lookup.mnemonic, lookup.operands)
        table.insert(self.instructions, instruction)
        offset = offset + 1
    end
end

function Disassembler:printInstructions()
    for _, instruction in pairs(self.instructions) do
        print(instruction:toString())
    end
end
