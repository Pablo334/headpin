#! /bin/bash

if [ ! -n "$KATELLO" ]; then
    # Default to assuming a sibling dir called 'katello'
    KATELLO=../katello
fi

cp $KATELLO/src/app/stylesheets/katello.scss ./app/stylesheets
cp $KATELLO/src/app/stylesheets/screen.scss ./app/stylesheets
cp $KATELLO/src/app/stylesheets/grid.scss ./app/stylesheets
cp $KATELLO/src/app/stylesheets/_*.scss ./app/stylesheets

cp $KATELLO/src/public/stylesheets/fancyqueries.css ./public/stylesheets
cp $KATELLO/src/public/stylesheets/images/* ./public/stylesheets/images

cp $KATELLO/src/app/views/layouts/katello.haml ./app/views/layouts
cp $KATELLO/src/app/views/layouts/_footer.haml ./app/views/layouts
cp $KATELLO/src/app/views/common/_panel.html.haml ./app/views/common
cp $KATELLO/src/app/views/common/_list_item.html.haml ./app/views/common
cp $KATELLO/src/app/views/common/_list_remove.js.haml ./app/views/common
cp $KATELLO/src/app/views/common/_list_update.html.haml ./app/views/common

cp $KATELLO/src/public/javascripts/panel.js ./public/javascripts
cp $KATELLO/src/public/javascripts/katello.js ./public/javascripts

cp $KATELLO/src/public/fakedata.html ./public
cp -r $KATELLO/src/public/images ./public

cp $KATELLO/src/app/controllers/auto_complete_search.rb ./app/controllers