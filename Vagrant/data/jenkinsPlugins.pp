node 'ubuntu1310-i386' {


include jenkins 

jenkins::plugin {

        'git-client': ;
        'ssh-agent': ;
        'git': ;
        'github-api': ;
        'github': ;
        'scm-api': ;
        'confluence-publisher': ;
        'jira': ;
        'radiatorviewplugin': ;
        'chucknorris' : ;
}

}
