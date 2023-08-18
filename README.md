pygame.init()
screen_width = 800
screen_height = 600
screen = pygame.display.set_mode((screen_width, screen_height))
pygame.display.set_caption("Simple Running Game")
white = (255, 255, 255)
player_width = 50
player_height = 50
player_x = screen_width // 2 - player_width // 2
player_y = screen_height - player_height
clock = pygame.time.Clock()
running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            running = False

    # Player movement
    keys = pygame.key.get_pressed()
    if keys[pygame.K_LEFT] and player_x > 0:
        player_x -= 5
    if keys[pygame.K_RIGHT] and player_x < screen_width - player_width:
        player_x += 5

    # Clear the screen
    screen.fill(white)

    # Draw player
    pygame.draw.rect(screen, (0, 0, 255), (player_x, player_y, player_width, player_height))

    # Update the display
    pygame.display.flip()

    # Control the frame rate
    clock.tick(30)

# Clean up
pygame.quit()
sys.exit()

