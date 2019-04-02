# h2-shell
Very simple docker image to start a h2 shell.

Example Usage:

    docker run -it -v /path/to/db.mv.db:/h2/db.mv.db ondy/h2-shell

Then enter `jdbc:h2:./db` as URL, choose default driver and enter username and password as needed.
