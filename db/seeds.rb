# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

LOREM_IPSUM = [
  "Sed felis eget velit aliquet sagittis id consectetur. Odio tempor orci dapibus ultrices in iaculis nunc. At augue eget arcu dictum varius. Malesuada bibendum arcu vitae elementum curabitur vitae. Odio tempor orci dapibus ultrices in iaculis nunc sed augue. Risus quis varius quam quisque. Dolor morbi non arcu risus quis varius quam quisque. Nunc congue nisi vitae suscipit tellus. Amet consectetur adipiscing elit pellentesque habitant morbi. Scelerisque purus semper eget duis at tellus at urna. Quis auctor elit sed vulputate mi sit. Suspendisse interdum consectetur libero id faucibus nisl tincidunt eget nullam. At in tellus integer feugiat scelerisque varius morbi enim.
Eu turpis egestas pretium aenean. Tellus id interdum velit laoreet. Faucibus a pellentesque sit amet porttitor eget dolor. Amet facilisis magna etiam tempor. Odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam. Etiam erat velit scelerisque in. Eu tincidunt tortor aliquam nulla facilisi cras fermentum odio eu. Feugiat in ante metus dictum at tempor. Sollicitudin ac orci phasellus egestas tellus rutrum tellus. Habitant morbi tristique senectus et netus et malesuada fames. Porttitor massa id neque aliquam vestibulum morbi blandit cursus risus. Ac odio tempor orci dapibus ultrices. Eros donec ac odio tempor orci dapibus ultrices. Senectus et netus et malesuada fames. Ut eu sem integer vitae. In hendrerit gravida rutrum quisque. Praesent tristique magna sit amet. Porttitor lacus luctus accumsan tortor posuere. Non consectetur a erat nam. Ut faucibus pulvinar elementum integer enim neque volutpat ac.
Viverra nibh cras pulvinar mattis nunc. A diam sollicitudin tempor id eu nisl nunc mi. Sit amet venenatis urna cursus eget nunc scelerisque. Ut lectus arcu bibendum at varius vel pharetra. Leo urna molestie at elementum eu facilisis sed. Eget lorem dolor sed viverra ipsum nunc aliquet bibendum. Fermentum iaculis eu non diam phasellus vestibulum lorem sed. Nunc congue nisi vitae suscipit tellus. Libero enim sed faucibus turpis. Pulvinar neque laoreet suspendisse interdum consectetur libero id. Consectetur libero id faucibus nisl tincidunt. Consectetur libero id faucibus nisl tincidunt eget nullam. Sed pulvinar proin gravida hendrerit lectus. Id volutpat lacus laoreet non curabitur. Integer enim neque volutpat ac. Sit amet nisl purus in mollis nunc. Molestie a iaculis at erat pellentesque adipiscing commodo elit at. Leo duis ut diam quam nulla porttitor. Mauris nunc congue nisi vitae suscipit.",

  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',

  "Tortor vitae purus faucibus ornare. Enim nunc faucibus a pellentesque sit amet. Enim neque volutpat ac tincidunt. Non diam phasellus vestibulum lorem sed risus ultricies tristique nulla. Netus et malesuada fames ac turpis egestas maecenas pharetra. Tristique senectus et netus et malesuada fames ac turpis. Tempor nec feugiat nisl pretium fusce id. Elit at imperdiet dui accumsan sit amet nulla. Nulla malesuada pellentesque elit eget gravida cum sociis natoque penatibus. Dolor sit amet consectetur adipiscing. Quis ipsum suspendisse ultrices gravida dictum fusce ut placerat. Diam maecenas sed enim ut sem viverra. Aliquet eget sit amet tellus cras adipiscing enim.
At urna condimentum mattis pellentesque id nibh. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Augue eget arcu dictum varius duis at consectetur. Ante metus dictum at tempor commodo ullamcorper. Dui sapien eget mi proin sed libero enim sed. Tristique sollicitudin nibh sit amet commodo nulla. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar proin. Sagittis eu volutpat odio facilisis mauris. Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Odio ut enim blandit volutpat maecenas volutpat. Mattis nunc sed blandit libero volutpat sed. Sapien faucibus et molestie ac feugiat sed lectus. Nunc mi ipsum faucibus vitae aliquet. Tincidunt augue interdum velit euismod in pellentesque massa placerat. Diam vulputate ut pharetra sit amet aliquam. Tristique magna sit amet purus gravida. Posuere lorem ipsum dolor sit amet consectetur adipiscing. Et odio pellentesque diam volutpat. Ultrices eros in cursus turpis massa tincidunt.
Urna id volutpat lacus laoreet non curabitur. Nisl tincidunt eget nullam non nisi est. Dignissim convallis aenean et tortor at risus. Varius duis at consectetur lorem. Nec feugiat in fermentum posuere urna nec tincidunt praesent semper. Dignissim sodales ut eu sem integer vitae justo eget. Aliquam faucibus purus in massa tempor nec feugiat. Volutpat sed cras ornare arcu. A lacus vestibulum sed arcu non odio euismod lacinia at. Aliquet eget sit amet tellus cras adipiscing enim eu turpis. Velit scelerisque in dictum non consectetur a. Id aliquet risus feugiat in ante metus dictum at tempor."
].freeze

User.create(email: 'adm@adm.in', name: 'admin', role: 'admin', password: 'admin1', password_confirmation: 'admin1')

bob = User.create(email: 'au1@auth.or', name: 'Bob', role: 'author', password: '1qa2ws',
                  password_confirmation: '1qa2ws')
martin = User.create(email: 'au2@auth.or', name: 'Martin', role: 'author', password: '1qa2ws',
                     password_confirmation: '1qa2ws')
alice = User.create(email: 'au3@auth.or', name: 'Alice', role: 'author', password: '1qa2ws',
                    password_confirmation: '1qa2ws')

100.times do |i|
  Article.create(title: "bob's #{i}th article", body: LOREM_IPSUM[0], author: bob)
  Article.create(title: "martin's #{i}th article", body: LOREM_IPSUM[1], author: martin)
  Article.create(title: "alice's #{i}th article", body: LOREM_IPSUM[2], author: alice)
end
