BinaryFileReader = {}
BinaryFileReader.__index = BinaryFileReader

function BinaryFileReader:new()
    local self = setmetatable({}, BinaryFileReader)
    return self
end

function BinaryFileReader:readFile(filePath)
end

function BinaryFileReader:readByte(offset)
end
