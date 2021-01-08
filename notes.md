    # Rails Project Planning

    #Name: research-library

    #-What I want my app to do?
       #>collect research on different subject
       #>User to be able to: add research they have been collecting, add comments to further other users research, guest viewing
       #>Research to have: Title, Date, Subject, Commentary("research summary")

    #-What is the user experience?
        #>Must be fluent and easy to use
        #>Must be allowed to add new research by subject 
        #>Search for other users research by subject
        #> Must be ableto add further commentary to other users research

    #-What will yoour models be?
        #>User
            name
            age
            email
            password

        #>Research
            title 
            description

        #>Research Subject
            user_id
            research_id
            subject
            
    #-What are your associations?
        #> User-->Subject<--->Research

    #-What are all the possible views for my app?
        #>User
            #=index
            #=edit
            #=create
            #=show
            #=new

        #>Subject
            #=index
            #=show
            #=create
            #=new

        #>Research
            #=index
            #=show
            #=create
            #=new
            #=edit
    