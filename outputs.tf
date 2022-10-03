output "communities_service_repository_url" {
  value       = aws_ecr_repository.communities-service.repository_url
}

output "ratings_service_repository_url" {
  value       = aws_ecr_repository.ratings-service.repository_url
}