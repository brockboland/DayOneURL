if [ -z "$POPCLIP_BROWSER_URL" ]
then
  ENTRY_TEXT="$POPCLIP_TEXT"
else
  # Make sure that the title is set
  if [ -z "$POPCLIP_BROWSER_TITLE" ]
  then
    POPCLIP_BROWSER_TITLE=POPCLIP_BROWSER_URL
  fi

  ENTRY_TEXT="From [$POPCLIP_BROWSER_TITLE]($POPCLIP_BROWSER_URL):
$POPCLIP_TEXT"
fi

open "dayone://post?entry=$ENTRY_TEXT"
open -b com.dayoneapp.dayone
