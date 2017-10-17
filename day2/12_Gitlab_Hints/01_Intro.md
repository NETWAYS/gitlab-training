!SLIDE subsection
# ~~~SECTION:MAJOR~~~ GitLab Hints

!SLIDE smbullets
# Best Practices

* HTTPS only
* Performance tuning
* Monitoring
* Troubleshooting


~~~SECTION:handouts~~~

****


~~~ENDSECTION~~~



!SLIDE smbullets
# Secure HTTPS environment

* Use Let's Encrypt or own certificates
* Enable HTTPS in Gitlab/Nginx
* Forward all HTTP requests to HTTPS


~~~SECTION:handouts~~~

Reference: https://docs.gitlab.com/ce/install/installation.html#using-https

****


~~~ENDSECTION~~~



!SLIDE smbullets
# Performance Tuning

* 4+ GB RAM make GitLab happy
* Move PostgreSQL 9.2+ to a dedicated host

~~~SECTION:handouts~~~


****


~~~ENDSECTION~~~

!SLIDE smbullets
# Monitoring

* HTTP(S)
* PostgreSQL
* Redis
* Background daemons
* Logs


~~~SECTION:handouts~~~


****


~~~ENDSECTION~~~

!SLIDE smbullets
# Troubleshooting

* Reset admin password


~~~SECTION:handouts~~~

Reference: https://forum.gitlab.com/t/troubleshooting-guide-wiki/

****

If you have accidentally locked yourself out, you can manually reset
the password.

Please beware that this prints/expects passwords in clear text!

First start the rails console (based on the omnibus package):

```
cd /var/opt/gitlab
gitlab-rails console
```

It takes a bit to launch. Then search for the desired user.
This example assumes that you've locked yourself out of an administrative account.

```
irb(main):008:0> user = User.find_by(admin: true)
=> #<User id:1 @root>
```

Set a new password and save it.

```
irb(main):014:0> user.password = 'supersecretpassword'
=> "supersecretpassword"
irb(main):015:0> user.password_confirmation = 'supersecretpassword'
=> "supersecretpassword"
irb(main):016:0> user.save
Enqueued ActionMailer::DeliveryJob (Job ID: 63e8ec2f-44b4-4ad0-8d68-58e373cb9a70) to Sidekiq(mailers) with arguments: "DeviseMailer", "password_change", "deliver_now", gid://gitlab/User/1
=> true
```


~~~ENDSECTION~~~

