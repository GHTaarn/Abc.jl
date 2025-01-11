module JLDExt

using Abc, JLD
import JLD.writeas
import JLD.readas

struct JLDAb
    a
end

JLD.writeas(x::Ab) = writeas(JLDAb(x.a))
JLD.readas(x::JLDAb) = Ab(x.a)

function __init__()
    @async Abc.set_jldext()
    @info "Loaded JLDExt"
end

end

