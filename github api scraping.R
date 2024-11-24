library(httr)

myapp = oauth_app("github".
                  key ="yourconsumerkeyhere", secret = "yourconsumersecrethere")
# 3. Get OAuth myapp <- oauth_app("github",
key = "Ov23liz6Qvc4V8R8Ime3",
secret = "778ca9d23cff289ffc44f6fa16a0495b1ab9684b"
)
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

# 4. Use API
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
content(req)

# OR:
req <- with_config(gtoken, GET("https://api.github.com/users/jtleek/repos"))
stop_for_status(req)
content(req)
