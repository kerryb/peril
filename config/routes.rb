Peril::Application.routes.draw do
  root to: "games#index"

  get ":slug"                                   => "games#show",
      as: :game
  get ":game_slug/intro"                        => "categories#index",
      as: :intro
  get ":game_slug/correct/:player_id"          => "scores#create",
      as: :correct, defaults: {correct: true}
  get ":game_slug/wrong/:player_id"            => "scores#create",
      as: :wrong, defaults: {correct: false}
  get ":game_slug/:category_slug/:reward_score" => "answers#show",
      as: :answer
  get ":game_slug/undo"                         => "events#destroy",
      as: :undo
end
