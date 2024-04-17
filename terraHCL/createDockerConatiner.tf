resource "docker_image" "mysql_image"{
	name="mysql:latest"
	keep_locally=false
}

resource "docker_container" "mysql_container"{
	image=docker_image.mysql_image.name
	name="mysql_automated"

	ports{
		internal=3002
		external=3002
	}
}
