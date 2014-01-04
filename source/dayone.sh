# Split the selected text into lines to format as blockquote
SELECTED_TEXT=""
# Using \n for newline character doesn't work for some reason
export IFS="
"
# For each line: prepend with > then add a blank > line for spacing
for line in $POPCLIP_TEXT; do
  SELECTED_TEXT="$SELECTED_TEXT> $line
>
"
done


if [ -z "$POPCLIP_BROWSER_URL" ]
then
  # No browser URL: just use the selected text
  ENTRY_TEXT="$SELECTED_TEXT"
else
  # YES browser URL: Make sure that the title is set
  if [ -z "$POPCLIP_BROWSER_TITLE" ]
  then
    POPCLIP_BROWSER_TITLE=POPCLIP_BROWSER_URL
  fi

  # Make the URL a link, and append the selected text
  ENTRY_TEXT="From [$POPCLIP_BROWSER_TITLE]($POPCLIP_BROWSER_URL):
$SELECTED_TEXT"
fi

open "dayone://post?entry=$ENTRY_TEXT"
open -b com.dayoneapp.dayone
