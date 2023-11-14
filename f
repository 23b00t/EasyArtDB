
[1mFrom:[0m /home/nx/Documents/Coding/Künstlerschmuck/EasyArtDB/app/controllers/bookmarks_controller.rb:39 BookmarksController#destroy:

    [1;34m29[0m: [32mdef[0m [1;34mdestroy[0m
    [1;34m30[0m:   @list = [1;34;4mList[0m.find(params[[33m:list_id[0m])
    [1;34m31[0m:   [1;34m# use #uniq because bookmarks of the same item can exist multiple times on list at the moment (should be fixed later on)[0m
    [1;34m32[0m:   @item_ids = params[[33m:item_ids[0m].map(&[33m:to_i[0m).uniq
    [1;34m33[0m: 
    [1;34m34[0m:   success_responses = []
    [1;34m35[0m:   error_responses = []
    [1;34m36[0m: 
    [1;34m37[0m:   binding.pry
    [1;34m38[0m: 
 => [1;34m39[0m:   @item_ids.each [32mdo[0m |item|
    [1;34m40[0m:     @bookmark = [1;34;4mBookmark[0m.where([35mitem_id[0m: item, [35mlist_id[0m: @list.id)
    [1;34m41[0m: 
    [1;34m42[0m:     [32mif[0m @bookmark.destroy(@bookmark.ids)
    [1;34m43[0m:       success_responses << { [35msuccess[0m: [1;36mtrue[0m, [35mbookmark_id[0m: @bookmark.id }
    [1;34m44[0m:     [32melse[0m
    [1;34m45[0m:       error_responses << { [35msuccess[0m: [1;36mfalse[0m, [35merrors[0m: @bookmark.errors.full_messages }
    [1;34m46[0m:     [32mend[0m
    [1;34m47[0m:   [32mend[0m
    [1;34m48[0m: 
    [1;34m49[0m:   [32mif[0m error_responses.empty?
    [1;34m50[0m:     render [35mjson[0m: { [35msuccess[0m: [1;36mtrue[0m, [35mbookmarks[0m: success_responses }
    [1;34m51[0m:   [32melse[0m
    [1;34m52[0m:     render [35mjson[0m: { [35msuccess[0m: [1;36mfalse[0m, [35merrors[0m: error_responses.flatten }, [35mstatus[0m: [33m:unprocessable_entity[0m
    [1;34m53[0m:   [32mend[0m
    [1;34m54[0m: [32mend[0m

