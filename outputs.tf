output "private_ip" {
    value = aws_instance.conditions[*].private_ip # it gives complete ip address bcz condition got index or list
  
}