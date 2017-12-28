# uchicagowintercare.github.io
### Shorey's Website for Advertising and Selling Winter Care Packages

Hello! The following info below is basically a "brief" tutorial on how to edit and maintain Shorey's UChicago Winter Care Package website.

## GitHub Setup
If you're reading this, it's most likely through the website's GitHub Repository (repo for short)!

This is where all of the code to edit and build our website is held. The **master** branch holds all the code. The **gh-pages** branch holds the actual HTML files that build the website.

So, to begin with, if you want to help with this website, you'll need a github account. After you've created one, you can create a local copy of the website code on your computer.

### Creating a Local Website Copy
To do this, navigate to the website's repo's "home page". This can be done by clicking on the repo's name in blue towards the top of the page. Should look something like *cchoy96/<this repo's name>*.

Next, click on the green button towards the right of the screen that says **'Clone or download'**. Copy the url there to your clipboard, then open your Terminal.

In your terminal, navigate to whatever directory you want to have the website's files in. Then, type the following:
```
$ git clone https://github.com/cchoy96/uchicagowintercare.github.io.git
```
You should then see a bunch of text that indicates you've successfully downloaded a local copy of the repo.

## Hugo Setup
Since handwriting all of the HTML and CSS is either for a) less legit looking websites or b) people who actually know what they're doing, we utilize Hugo. [Hugo](https://gohugo.io/) is a framework for building websites and makes it a lot easier for people who don't know HTML or CSS to edit a website's contents.

To get started with Hugo, go to [https://gohugo.io/getting-started/quick-start/](https://gohugo.io/getting-started/quick-start/) and complete Step 1. It should guide you in setting up Hugo's library on your computer. Feel free to just skip steps 2-5 unless you just want to try messing around with your own basic site.

### Running the Website Locally
To run the website locally, navigate into the root directory of your local copy of the repo. This is the directory that holds the **config.toml** file. Next, run:
```
$ hugo serve
```

Leave that running then open a web browser (like Chrome or Safari) and go to
```
localhost:1313
```

Here, you should be able to see your local version of the website hosted on your computer.
Any changes you make to the website's files will be reflected on this localhost.

## Editing the Site
To edit the site's files, you'll want to do it in a text editor. [Atom](https://atom.io/) and [Sublime Text](https://www.sublimetext.com/) are user friendly options and in common-use today. [vim](http://www.vim.org/) is another popular option, but it's difficult to pick up and I don't recommend diving into it for this kind of work tbh.

#### Editing the Website Text
Almost all of the website's text can all be edited through the **config.toml** file.
To edit the text used for the *Packages* section, access the .yaml files in the **data/projects** directory.

#### Editing the Website's Images
This can be done by changing out the images in the **static/img** directory. Make sure that whatever new image you're trying to insert has the same name and file extension as the one it is replacing.

If you choose to change the file name or extension, you will need to change it in all the places that reference that image in either the .yaml or .toml files.

Try to keep the image dimensions the same to preserve the layout of the site.

#### Editing the Website's Domain Name
If you wish to change the domain name of the site, change the **CNAME** file and the **config.toml**'s *baseurl* field.

The domain's DNS must also be updated, but this is for the admin of the site to worry about.

#### More In-depth Edits
To do more custom edits to the website, you'll need to go into the website's HTML and CSS files. This will require a bit of knowledge about how those languages work. The HTML files are all located within the **layouts/** directory. The CSS files are all located within the **static/css** directory. Be especially careful messing with these files.

### Pushing to Master
When you're finished editing the site, you will want to *push* your changes to the master branch.

First, you table the changes to be pushed by committing them. Do this with
```
$ git commit -am "some commit msg describing what you changed"
```
In practice, it is best to commit periodically throughout your work. Kind of like how you should periodically save a paper when writing it. This helps with website version control in the event something goes wrong.

When you're ready to push your changes to the server repo, use
```
$ git push
```

Note, however, your github account must be registered as a collaborator in the repository to push to it. I may impose some conventions regarding *merge requests* and such later on. This is better practice but may be an unnecessary pain considering the scope of this project.

** Do not EVER push broken code to the master branch. **

## Publishing the Live Site
The actual website reads from the files in the **gh-pages** branch to build itself. So, to change the actual live website, we must build the site using Hugo and have the build files be pushed into this branch. I've written a script that automates almost the entire process for this.

Run the **publish.sh** script from your local repo copy. Make sure you've committed and push'd to the **master** branch.
```
$ ./publish.sh
```

Then, go into the repo settings. Under **GitHub Pages** set the **Custom Domain** to whatever the website's domain name is. If you don't do this step, the live website will be down and people will be sad.

To check that your changes have gone through to the live website, just go to it. It may take a few minutes for the changes to the website to propagate. It's best to view the new website through an incognito tab so your browser cache doesn't interfere.

## Contact
Questions or Comments? Just contact the website's admin and/or the owner of this repository.
Since the owner may change, you can also contact [Chris Choy](chrischoy.net). He was the original owner of this repository, creator of the site, and person who wrote this README.
