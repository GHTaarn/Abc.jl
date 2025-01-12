module Abc

export Ab, JLDExt

struct Ab
    a
end

function set_jldext(m)
    global JLDExt = m
    @info "JLDExt set to '$JLDExt'"
end

end # module Abc
