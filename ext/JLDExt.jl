module JLDExt

using Abc, JLD

struct JLDAb
    a
end

JLD.writeas(x::Ab) = writeas(JLDAb(x.a))
JLD.readas(x::JLDAb) = Ab(x.a)

__init__() = @info "Loaded JLDExt"

end

