int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculatePoints(Map<String, int> team) {
    return (team['Free throws'] ?? 0) * 1 +
        (team['2 pointers'] ?? 0) * 2 +
        (team['3 pointers'] ?? 0) * 3;
  }

  int teamAPoints = calculatePoints(teamA);
  int teamBPoints = calculatePoints(teamB);

  if (teamAPoints > teamBPoints) {
    return 1;
  } else if (teamAPoints < teamBPoints) {
    return 2;
  } else {
    return 0;
  }
}
