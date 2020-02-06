---
layout: default
title: How to use this template for your documentation
nav: pages/chapter1
---


{{ page.title }}
================================================


## Chapter Outline

- [How to start](#chapter1.how_to_start)

  - [Creating your repository](#chapter1.Creating_your_repository)
  
  - [Creating your site](#chapter1.creating_your_site)
  
- [Editing your site](#chapter1.Editing_your_site)
  
    - [About this template](#chapter1.About_this_template)
    
    - [How to edit the parts of the template](#chapter1.How_to_edit_the_parts_of_the_template)
    
- [Indexing your GitHub site with Google](#chapter1.Indexing_your_GitHub_site_with_Google)


<a name="chapter1.how_to_start"></a>

How to start
-------------

<a name="chapter1.Creating_your_repository"></a>

### Creating your repository

[This template](https://ncbi.github.io/ncbi_doc_template/) is created to help you develop and maintain your documentation on GitHub platform. We use [GitHub Pages](https://pages.github.com/) for C++ Toolkit documentation and for this template. 

To start your project on GitHub you have to create a repository. All NCBI repositories must reside under GitHub NCBI organization [https://github.com/ncbi](https://github.com/ncbi). To create a repository you need to create a JIRA ticket in OSS project. You will have to provide them with the name for your repository. This name will be part of URL of your GitHub website. You can find the information about GitHub Pages [here](https://help.github.com/en/github/working-with-github-pages/about-github-pages).

You also have to ask NCBI GitHub support group to give admin permissions to a person or group of persons that will administer your repository. This person(s) will administer your site, give permissions to other contributors, review and merge pull requests, etc.
You can read about GitHub permissions [here](https://help.github.com/en/github/getting-started-with-github/access-permissions-on-github).

The result of this request should be an empty GitHub repository located here: https://github.com/ncbi/<your_repository_name>

<a name="chapter1.creating_your_site"></a>

### Creating your site

Now, you have to clone our template into your empty repository. We have created a script that will do this and some other steps that are necessary to start your project.

This script:

  - clones [this template](https://github.com/ncbi/ncbi_doc_template.git) into your empty repository
  - replaces /ncbi_doc_template/ (the name of template repository) in files with the name of your repository
  - commits updated files to your new repository
  - publishes the repository
  

Click here to download the [init.sh](https://ncbi.github.io/ncbi_doc_template/static/init.sh) script.
Save it to your working directory on Linux and run there the command as follows:

```
$ ./init.sh <your_repository_name>
```

To check whether it is published on web go to:

```
https://github.com/ncbi/<your_repository_name>/settings
```

Scroll down to ‘GitHub Pages’ section. If everything is fine, you should see a message that your site is successfully published. Click the link to see the published site. 

<a name="chapter1.Editing_your_site"></a>

### Editing your site

After the original set up is complete, you can now customize the template for your needs. The structure of the template is described below.


<a name="chapter1.About_this_template"></a>

#### About this template

This template is based on C++ Toolkit documentation. It consists of several blocks:

* Header
* Sidebar
* Footer
* Content
* Help page

You can customize any of these blocks. The footer might not need to be customized/updated because it is a standard NCBI footer.

HTML files for header, sidebar, and footer are located in ncbi_doc_template/_includes/ directory. We use static site generator [Jekyll](https://help.github.com/en/github/working-with-github-pages/setting-up-a-github-pages-site-with-jekyll) to render your GitHub pages. Header, sidebar, and footer are parts of page template, i.e. they will be displayed on each of your GitHub page.

The content consists of your parts and chapters. All content files are located in ncbi_doc_template/pages/ directory.

<a name="chapter1.How_to_edit_the_parts_of_the_template"></a>

#### How to edit the parts of the template

1. Editing the content.
To edit the content (chapters), click 'Edit' button at the top right corner of each chapter.

You can also use this URL to reach any of your files:

```
https://github.com/ncbi/<your_repository_name>/edit/gh-pages/<path_to_your_file>
```

<a name="chapter1.Indexing_your_GitHub_site_with_Google"></a>

### Indexing your GitHub site with Google.

In order to enable Google search on your site, you can use Google sitemaps. Follow the steps on how to build and submit Google sitemaps [here](https://support.google.com/webmasters/answer/183668?hl=en). There are also samples of sitemap (sitemap_000.xml) and robots.txt files in the template's root directory. 
