module Abc

export Ab, JLDExt

struct Ab
    a
end

function set_jldext()
    global JLDExt
    pause = 0.01
    for t in 0:pause:2
        JLDExt = Base.get_extension(@__MODULE__, :JLDExt)
        !isnothing(JLDExt) && break
        sleep(pause)
    end
    @info "JLDExt set to '$JLDExt'"
end

end # module Abc
