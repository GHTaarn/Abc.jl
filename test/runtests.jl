using Test, Abc, JLD

@testset "JLD" begin
    sleep(0.1)
    x = Ab(1)
    fname = "/tmp/JLD_test.jld"
    save(fname, "x", x)
    @test load(fname)["x"] == x
end

