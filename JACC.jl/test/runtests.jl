import JACC

const backend = JACC.JACCPreferences.backend

@static if backend == "cuda"
    println("CUDA backend loaded")
    include("tests_cuda.jl")
elseif backend == "amdgpu"
    @show "AMDGPU backend loaded"
    include("tests_amdgpu.jl")
elseif backend == "threads"
    @show "Threads backend loaded"
    include("tests_threads.jl")
end
