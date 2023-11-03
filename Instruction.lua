Instruction = {}
Instruction.__index = Instruction

function Instruction:new(mnemonic, operands)
    local self = setmetatable({}, Instruction)
    self.mnemonic = mnemonic
    self.operands = operands
    return self
end

function Instruction:toString()

end
