int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int getPoints(Map<String, int> team) {
    return (team['Free throws'] ?? 0) * 1 +
           (team['2 pointers'] ?? 0) * 2 +
           (team['3 pointers'] ?? 0) * 3;
  }

  int scoreA = getPoints(teamA);
  int scoreB = getPoints(teamB);

  if (scoreA > scoreB) {
    return 1;
  } else if (scoreB > scoreA) {
    return 2;
  } else {
    return 0;
  }
}
