int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int points(Map<String, int> team) {
    return (team['Free throws'] ?? 0) * 1 +
           (team['2 pointers'] ?? 0) * 2 +
           (team['3 pointers'] ?? 0) * 3;
  }

  int teamAPoints = points(teamA);
  int teamBPoints = points(teamB);

  if (teamAPoints > teamBPoints) return 1;
  if (teamAPoints < teamBPoints) return 2;
  return 0;
}
