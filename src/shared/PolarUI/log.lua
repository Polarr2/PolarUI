--wrapper for print, warn and error

local log = {}

function log.print(...)
    print("[PolarUI]", ...)
end

function log.warn(...)
    warn("[PolarUI]", ...)
end

function log.error(...)
    error("[PolarUI]", ...)
end

return log