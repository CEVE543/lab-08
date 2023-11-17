"""
GENERAL NOTATION

Our data X is a matrix.
Each row is an observation and each column is a feature.
This notation is repeated in all the functions below
"""

"""Initialize centroids"""
function init_centroids(X::AbstractMatrix, k::Int)::AbstractMatrix
    n_obs, n_feature = size(X)
    μ = rand(k, n_feature) # THIS IS A PLACEHOLDER, REPLACE WITH YOUR CODE
    return μ
end

"""Compute the Euclidean distance between two vectors"""
function euclidean_distance(x::AbstractVector, y::AbstractVector)::Real
    return rand() # THIS IS A PLACEHOLDER, REPLACE WITH YOUR CODE
end

"""
Assign each element to a cluster

Returns a vector of integers, where each integer is
the cluster assignment for the corresponding observation.
If X has N rows and P features, the vector will be length N.
"""
function assign_clusters(X::AbstractMatrix, μ::AbstractMatrix)::Vector{<:Int}

    # read in the data and make sure the sizes are right
    n_obs, n_feature = size(X)
    k, n_feature_2 = size(μ)
    @assert n_feature == n_feature_2 # make sure the input is right

    # compute the distances
    # the nested list comprehension syntax is provided for you
    distances = [euclidean_distance(X[nᵢ, :], μ[kᵢ, :]) for nᵢ in 1:n_obs, kᵢ in 1:k]

    cluster_assignments = zeros(Int, n_obs) # THIS IS A PLACEHOLDER, REPLACE WITH YOUR CODE
    return cluster_assignments
end

"""
Based on the new cluster assignments, recompute each cluster centroid
"""
function update_centroids(
    X::AbstractMatrix, cluster_assignments::AbstractVector{<:Int}, k::Int
)::AbstractMatrix
    n_obs, n_feature = size(X)
    @assert length(cluster_assignments) == n_obs # make sure the input is right
    μ = rand(k, n_feature) # THIS IS A PLACEHOLDER, REPLACE WITH YOUR CODE
    return μ
end

function check_convergence(μ_history::Vector{<:AbstractMatrix}, τ::Real)::Bool
    # THIS IS A PLACEHOLDER, REPLACE WITH YOUR CODE
    return false
end
