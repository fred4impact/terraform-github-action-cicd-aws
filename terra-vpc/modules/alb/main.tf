#application load balancer
resource "aws_alb" "alb" {
    name            = "application-load-balancer"
    internal        = false
    security_groups = [var.sg_id]
    subnets         = var.subnets
    
    tags = {
        Name = "Application Load Balancer"
    }
}   

#listener
resource "aws_alb_listener" "alb_listener" {
    load_balancer_arn = aws_alb.alb.arn
    port              = 80
    protocol          = "HTTP"

    default_action {
        type             = "forward"
        target_group_arn = aws_alb_target_group.alb_target_group.arn
    }
}


#target group
resource "aws_alb_target_group" "alb_target_group" {
    name     = "alb-target-group"
    port     = 80
    protocol = "HTTP"
    vpc_id   = var.vpc_id

    health_check {
        path                = "/"
        protocol            = "HTTP"
        port                = "traffic-port"
        healthy_threshold   = 2
        unhealthy_threshold = 2
        timeout             = 5
        interval            = 10
    }
}

#target group attachment
resource "aws_alb_target_group_attachment" "alb_tgroup_attachment" {
    target_group_arn = aws_alb_target_group.alb_target_group.arn
    target_id        = var.ec2_ids[0]
    port             = 80
}

