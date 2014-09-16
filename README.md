# r10k gitlab webhook

A ruby gem that starts a webrick webservice and listens for requests
When a request is recieved, it executes the following command

    sudo r10k deploy environment -pv warn

##Usage

    gem install r10k_gitlab_webhook
    r10k_gitlab_webhook 8000

![screenshort](http://cl.ly/image/0p3U1H2C1q0q/Screenshot%202014-09-16%2012.08.25.png)

[https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/web_hooks/web_hooks.md](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/web_hooks/web_hooks.md)

## Start up scripts

A few init scripts have been placed in the [contrib directory](https://github.com/spuder/r10k_gitlab_webhook/contrib)  

Generated using [pleaserun](https://github.com/jordansissel/pleaserun)


## Limitations

Requires ruby 1.9

