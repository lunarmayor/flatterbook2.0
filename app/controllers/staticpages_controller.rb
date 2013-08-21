class StaticpagesController < ApplicationController
  respond_to :js, :html
  
  def home
  	@profiles = [["alison.png", "Alison Martingeli"],["allan stiver.png", "Allan Stiver"], ["amie rudolf.png", "Amie Rudolf"],
                ["ann marie shepler.png", "Ann Marie Shepler"], ["bobby silva.png", "Bobby Silva" ], ["brenda johnsen.png", "Brenda Johnsen"],
                ["brenden thomas.png", "Brenden Thomas"], ["brian kaplan .png", "Brian Kaplan"], ["carl smedberg.png", "Carl Smedberg"],
                ["charlie wheeler.png", "Charlie Wheeler"], ["chelsea yeats.png", "Chelsea Yeats"], ["chris kim .png", "Chris Kim"],
                ["clayton hinzman.png", "Clayton Hinzman"], ["cody monteleone.png", "Cody Monteleone"], ["darlene tansey.png", "Darlene Tansey"],
                ["darren vasta.png", "Darren Vasta"], ["darryl westerlund.png", "Darryl Westerlund"], ["edwina vire.png", "Edwina Vire"],
                ["ericka nassif.png", "Ericka Nassif"], ["erik chesney.png", "Erik Chesney"], ["esmeralda guebert.png", "Esmeralda Guebert"],
                ["eva oslo .png", "Eva Oslo" ], ["felicia cassidy.png", "Felicia Cassidy"], ["fernando claire.png", "Fernando Claire"],
                ["fernando delpino.png", "Fernando Delpino"], ["greg.png", "Greg Howard"], ["guy roder.png", "Guy Roder"], ["harold shaw.png", "Harold Shaw"],
                ["harriet wambach.png", "Harriet Wambach"], ["hernandez valancia.png", "Hernandez Valancia"], ["hillary dates.png", "Hillary Dates"],
                ["hillary mendsley.png", "Hillary Mendsley"], ["janet jefferson.png", "Janet Jefferson"], ["jessie ressler.png", "Jessie Ressler"],
                ["john.png", "John Waters"], ["jose welles.png", "Jose Welles"], ["julio tezeno.png", "Julio Tezeno"], ["kelly pegg.png", "Kelly Pegg"],
                ["kerri.png", "Kerri Cobler"], ["kurt vanhooser.png", "Kurt Vanhooser"], ["kyle.png", "Kyle Sprtizer"], ["lars.png", "Lars Andrews"],
                ["leo.png", "Leo Bowden"], ["liza carberry.png", "Liza Carberry"], ["logan martin .png", "Logan Martin"], ["loraine saffold.png", "Loraine Saffold"],
                ["lou.png", "Lou Starks"], ["lydia .png","Lydia Vongate"], ["max storie.png", "Max Storie"], ["max woodell.png", "Max Woodell"],
                ["melinda lawley.png", "Melinda Lawley"], ["nelson rathke.png", "Nelson Rathke"],["pat o_'donnell .png", "Pat O'Donnell"],
                ["penelope.png", "Penelope Rogers"], ["penelope currington.png", "Penelope Currington"], [ "randall tullos.png", "Randall Tullos"],
                ["rebecca seabrook.png", "Rebecca Seabrook"], ["reneta.png", "Reneta Carlos"],["robert tippans.png", "Robert Tippans"], ["rosa gertz.png", "Rosa Gertz"],
                ["roslyn steinert.png", "Roslyn Steinert"], ["roxie allyn.png", "Roxie Allyn"], ["russell garibaldi.png", "Russell Garibaldi"],
                ["sameer bhatnagar.png", "Sameer Bhatnagar"], ["sarah olson.png", "Sarah Olson"],["serena bourke.png","Serena Bourke"],
                ["sid paladino.png", "Sid Paladino"], ["stacy clark.png", "Stacy Clark"], ["tanisha caffee.png","Tanisha Caffee"],
                ["taylor doyle.png", "Taylor Doyle"], ["ted beachy.png", "Ted Beachy"], ["tj clemans.png", "TJ Clemans"], ["todd.png", "Todd Plackard"],
                ["trevor.png", "Trevor Vine"], ["whitney pasculano.png", "Whitney Pasculano"]]

    @Comments = ["OMG you're so sexy!","awesome!! that is just awesome.", "this is so exciting :)", "LMFAO! too funny!", "Hell yah!", "Soooo adorable", "love dis", "true story", "you always have the best statuses!", "that's cutting edge", "freaking love that", "My life story", "Ah! Love it!", "so accomplished", "That sounds like so much fun", "what a risk taker!", "So popular!", "you're awesome!",
                "superstar!", "I'll drink to that", "so proud of you!", "You are on top of the world!", "you're always the life of the party!",
                "What a personality!", "you've got style!", "i'll party with you anytime!", "you are really down to earth!", 
                "keep up the good work!", "what a brain!", "wish I could be you!", "smart thinking!", "I'm jealous!", "U r the best!" ,
                 "that's awesome!" , "only you would of thought that!", "So clever!", "you are one of a kind!", "fantastic!", "Hahahaha you r amazing!",  "You are always right!", 
                 "wish I could be as perfect as you!" , "you always know what to do!" , "awesome job!",
                "way to go!", "you made my day!" , "why didn't i think of that?!" , "You're going to be famous someday!" , "you belong on tv!", "How do you do it?!",
                 "you brighten my day!", "Genius!", "Love it", "If only everyone was like you", "the world is a better place with you in it!", "you belong in a magazine!", "you're a great friend!" , "you deserve nothing but the best!" ,
                  "you're unforgettable" ,"wow, is there anything you can't do haha" , "You're my hero!", "I want to be you!",  "Why are you so awesome?" , "I don't know what I would do without you!",
                   "you are so interesting" , "Music to my ears!", "You make me smile!", "You're hilarious!", "Hahahaha Yes!", "I'm so lucky to know you!", "You're my favorite!", "You rock my world!" ,
                    "Ahhh I wish i was with you", "you belong in a fashion show!", "I can't believe how talented you are!", "You will go down in history!" , "You have a beautiful mind!", 
                     "You are so accomplished" , "OMG! I can't stop laughing!", "Hahah this is beyond hilarious", "Funniest post you've ever made lol", "You really think outside the box",  "You should be proud of yourself!", "I'm proud of you!" , "you are going places!", "You should start a blog!",
                       "How exciting", "Now that is living",  "You lead such an exciting life!" , "You know everything!", "You are so informative!" , "excellent!" , "lol Right on!", "Congratulations!", "You make me so happy!",
                       "hey sexy" , "you exude intelligence" , "I'm so impressed!", "so creative!" , "I just smile thinking of you!" , "You are brilliant!", "Wow, you are lucky!" , "lol why are you so lucky!", 
                        "you look like a movie star!" ,"You could be the next president!", "you are irreplaceable!", "you're hilarious!" ,"you are a riot!",
                        "You are ahead of the curve!", "Absolutely Inspirational!", "Fabulous!!!!",]
    @randomComments = @Comments.sample(10)
   
    @commenters = @profiles.sample(10)
  end

  def post
  	@post = params[:flattery][:status]
  	puts @post


  end

end
