#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WGOALS OGOALS
do
  if [[ $WINNER != "winner" ]]
  then
    TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")"
    if [[ -z $TEAM_ID ]]
    then
      INSERT_TEAM="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")"
      if [[ $INSERT_TEAM = "INSERT 0 1" ]]
      then
        echo Inserted $WINNER
      fi
    fi
  fi

  if [[ $OPPONENT != "opponent" ]]
  then
    TEAM_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")"
    if [[ -z $TEAM_ID ]]
    then
      INSERT_TEAM="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")"
      if [[ $INSERT_TEAM = "INSERT 0 1" ]]
      then
        echo Inserted $OPPONENT
      fi
    fi
  fi
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WGOALS OGOALS
do
  if [[ $YEAR != "year" ]]
  then
    WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")"
    OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")"

    INSERT_GAME="$($PSQL "INSERT INTO games(winner_id, opponent_id, winner_goals, opponent_goals, year, round) VALUES('$WINNER_ID', '$OPPONENT_ID', $WGOALS, $OGOALS, $YEAR, '$ROUND')")"
    echo $INSERT_GAME
  fi
done