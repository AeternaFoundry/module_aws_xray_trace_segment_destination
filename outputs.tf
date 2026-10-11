output "xray_trace_segment_destinations_id" {
  description = "Map of id values across all xray_trace_segment_destinations, keyed the same as var.xray_trace_segment_destinations"
  value       = { for k, v in aws_xray_trace_segment_destination.xray_trace_segment_destinations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "xray_trace_segment_destinations_destination" {
  description = "Map of destination values across all xray_trace_segment_destinations, keyed the same as var.xray_trace_segment_destinations"
  value       = { for k, v in aws_xray_trace_segment_destination.xray_trace_segment_destinations : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "xray_trace_segment_destinations_region" {
  description = "Map of region values across all xray_trace_segment_destinations, keyed the same as var.xray_trace_segment_destinations"
  value       = { for k, v in aws_xray_trace_segment_destination.xray_trace_segment_destinations : k => v.region if v.region != null && length(v.region) > 0 }
}

