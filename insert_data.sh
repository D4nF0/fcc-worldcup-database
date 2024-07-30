#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]] 
  then
    WINNER_COUNT=$($PSQL "SELECT COUNT(name) FROM teams WHERE name='$WINNER'")
    OPPONENT_COUNT=$($PSQL "SELECT COUNT(name) FROM teams WHERE name='$OPPONENT'")

    if [[ $WINNER_COUNT < 1 ]]
    then
      INSERT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi
    if [[ $OPPONENT_COUNT < 1 ]]
    then
      INSERT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi

    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    
    GAME=$($PSQL "SELECT COUNT(*) FROM games WHERE year=$YEAR AND round='$ROUND'" )
    if [[ $ROUND == Final && $GAME < 1 ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO games( year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES( $YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)" )
    
    elif [[ $ROUND == "Third Place" && $GAME < 1 ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO games( year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES( $YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)" )

    elif [[ $ROUND == "Semi-Final" && $GAME < 2 ]]
    then 
      INSERT_RESULT=$($PSQL "INSERT INTO games( year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES( $YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)" )

    elif [[ $ROUND == "Quarter-Final" && $GAME < 4 ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO games( year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES( $YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)" )
    
    elif [[ $ROUND == "Eighth-Final" && $GAME < 8 ]]
    then
      INSERT_RESULT=$($PSQL "INSERT INTO games( year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES( $YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)" )
    
    fi
    
  fi
done