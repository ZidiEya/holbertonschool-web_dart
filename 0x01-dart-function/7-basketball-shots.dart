int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int calculateScore(Map<String, int> team) {
    return (team['Free throws'] ?? 0) * 1 +
           (team['2 pointers'] ?? 0) * 2 +
           (team['3 pointers'] ?? 0) * 3;
  }

  int scoreA = calculateScore(teamA);
  int scoreB = calculateScore(teamB);

  if (scoreA > scoreB) {
    return 1;
  } else if (scoreA < scoreB) {
    return 2;
  } else {
    return 0;
  }
}
