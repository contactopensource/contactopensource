# Rails notes

This page has implementation-specific notes for Ruby on Rails.

For these instructions, we will copy files from this repo into a Rails app.

To help with this, we will set our source path to this repo, and our destination path to our Rails app:

```sh
export src="$HOME/git/contactopensource/contactopensource/implementations/rails"
export dst="$HOME/git/my-rails-projects/contact"
```

## Configure generators

Configure the Rails generators to use the primary key type UUID.

Run:

```sh
cp "$src/config/initializers/generators.rb" "$dst/config/initializers/generators.rb"
```

If you want to see the file, it is `config/initializers/generators.rb`:

```ruby
Rails.application.config.generators do |g|
  g.orm :active_record, primary_key_type: :uuid
end
```

## Enable extension pgcrypto

Enable the  Postgres database extenstion `pgcrypto`, which generates secure random UUID data.

Run:

```sh
rails generate migration enable_extension_pgcrypto --no-test-framework
```

If you want to see the file, it is `db/migrate/*_enable_extension_pgcrypto.rb`:

```ruby
class EnableExtensionPgcrypto < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'
  end
end
```

Run:

```sh
rails db:migrate
```

Output:

```stduout
== … EnableExtensionPgcrypto: migrating ==========================
== … EnableExtensionPgcrypto: migrated (0.0000s) =================
```
