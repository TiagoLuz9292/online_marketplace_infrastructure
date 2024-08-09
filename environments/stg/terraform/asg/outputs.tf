output "launch_template_id" {
  description = "The ID of the launch template"
  value       = module.asg.launch_template_id
}

output "autoscaling_group_name" {
  description = "The name of the Auto Scaling group"
  value       = module.asg.autoscaling_group_name
}

output "scale_out_policy_arn" {
  description = "The ARN of the scale-out policy"
  value       = module.asg.scale_out_policy_arn
}

output "scale_in_policy_arn" {
  description = "The ARN of the scale-in policy"
  value       = module.asg.scale_in_policy_arn
}