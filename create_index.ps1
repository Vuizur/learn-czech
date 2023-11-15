

# Step 1: Read content.html into a string variable
$content = ConvertFrom-Markdown -Path "ultimate-guide-to-learning-czech.md"

# Step 2: Read index-template.html into a string variable
$template = Get-Content -Path "index-template.html" -Encoding UTF8

# Step 3: Replace the "#INSERTHERE" placeholder with the contents of content.html
$index = $template -replace "#INSERTSTUFFHERE", $content.Html

# Step 4: Write the modified index-template.html string to a new file called index.html
$index | Out-File -FilePath "index.html" -Encoding UTF8
