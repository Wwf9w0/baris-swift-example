import SwiftUI

struct ContentView: View {
    
    // Board state
    @State var board = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    
    // Current player
    @State var currentPlayer = 1
    
    // Game over state
    @State var gameOver = false
    
    // Game over message
    @State var gameOverMessage = ""
    
    var body: some View {
        
        // Game board
        LazyVGrid(columns: [GridItem(.flexible(minimum: 100))], spacing: 10) {
            ForEach(0 ..< 3) { row in
                HStack(spacing: 10) {
                    ForEach(0 ..< 3) { column in
                        ZStack {
                            Image(systemName: "square")
                                .foregroundColor(board[row][column] == currentPlayer ? .red : .black)
    
                            // Button action
                            Button(action: {
                                self.makeMove(row, column)
                            }) {
                                EmptyView()
                            }
                        }
                    }
                }
            }
        }
        .padding()
        .alert(isPresented: $gameOver) {
            Alert(title: Text("Game over"), message: Text(gameOverMessage))
        }
    }
    
    // Make a move
    func makeMove(_ row: Int, _ column: Int) {
        // Check if the game is over
        if gameOver {
            return
        }
        
        // Place the player's mark on the board
        board[row][column] = currentPlayer
        
        // Switch players
        currentPlayer = currentPlayer == 1 ? 2 : 1
        
        // Check if the game is over
        checkGameOver()
    }
    
    // Check if the game is over
    func checkGameOver() {
        // Check for a winner
        for row in 0 ..< 3 {
            if board[row][0] == board[row][1] && board[row][1] == board[row][2] && board[row][0] != 0 {
                gameOver = true
                gameOverMessage = board[row][0] == 1 ? "Player 1 won!" : "Player 2 won!"
            }
        }
        
        for column in 0 ..< 3 {
            if board[0][column] == board[1][column] && board[1][column] == board[2][column] && board[0][column] != 0 {
                gameOver = true
                gameOverMessage = board[0][column] == 1 ? "Player 1 won!" : "Player 2 won!"
            }
        }
        
        if board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != 0 {
            gameOver = true
            gameOverMessage = board[0][0] == 1 ? "Player 1 won!" : "Player 2 won!"
        }
        
        if board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != 0 {
            gameOver = true
            gameOverMessage = board[0][2] == 1 ? "Player 1 won!" : "Player 2 won!"
        }
        
        // Check for a tie
        for i in 0 ..< 9 {
            if board[i][0] == 0 {
                return
            }
        }
        
        gameOver = true
        gameOverMessage = "Tie!"
    }
}
