echo "
1.Compile hada vote program
"
# Build the Leo vote program.
(
  leo build || exit
)

echo "
2.Propose a new ballot
"
# Run the `propose` function
(
 leo run propose || exit
)

echo "
3.Issue a new ballot ticket
"
# Run the `new_ticket` function
(
  leo run new_ticket || exit
)

echo "
4. Vote 'Yes' on the ballot ticket
"
# Run the `agree` or `disagree` function
(
  leo run agree || exit
  # leo run disagree || exit
)
