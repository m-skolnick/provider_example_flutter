* "pages_sharing_provider" contains two pages which share one provider. 
      This could be useful if you have a set of information where the same 
      data needs to be displayed in varying formats on multiple pages
* "page_dedicated_provider" contains one page with its associated provider. This is how I would recommend
      structuring the majority of pages. This way there is a clear separation of concerns 
      (data for a single page is retrieved and stored in the provider, and that data is displayed in the corresponding page)
