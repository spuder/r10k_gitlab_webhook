# r10k gitlab webhook

A ruby gem that starts a webrick webservice and listens for requests. 
When a POST is recieved, it executes the following command

    sudo r10k deploy environment -pv debug

##Usage

###Install gem  

    gem install r10k_gitlab_webhook
    
### Logging

Log locations can be specified. By default they are:

    /var/log/r10k_gitlab_webhook_server.log
    /var/log/r10k_gitlab_webhook_access.log
    /var/log/r10k_gitlab_webhook.log


## Examples

####Run as root, default logging

    sudo r10k_gitlab_webhook 8000


####Run as root, port 9000, no logging

    sudo r10k_gitlab_webhook 9000 /dev/null
    
####Run as user 'git', port 8000, log to /home/git/  

    sudo -u git -H r10k_gitlab_webhook 8000 /home/git


## Test

You can test that the script is working by running the following:

    curl -X POST http://foo.example.com:8000

You should then see output generated in the log files. 




##Post-receive hook

Since gitlab doesn't use the standard git 'post-receive' hook, you instead are provided a webhook. Additional information on webhooks here:
[https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/web_hooks/web_hooks.md](https://gitlab.com/gitlab-org/gitlab-ce/blob/master/doc/web_hooks/web_hooks.md)

Here is an example of the webhook being used in gitlab  

![screenshort](http://cl.ly/image/0p3U1H2C1q0q/Screenshot%202014-09-16%2012.08.25.png)

## Start up scripts

A few init scripts have been placed in the [contrib directory](https://github.com/spuder/r10k_gitlab_webhook/contrib)  

Generated using [pleaserun](https://github.com/jordansissel/pleaserun)



