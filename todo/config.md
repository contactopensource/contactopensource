export RAILS_GENERATE_SCAFFOLD_FIELDS_BEFORE="\
	tenant_id:id \
	parent_id:id \
	set_id:id \
	type_id:id \
	state_id:id \
	created_at:datetime \
	updated_at:datetime \
	state:text:index \
"

export RAILS_GENERATE_SCAFFOLD_FIELDS_AFTER="\
	--force \
	--no-timestamps \
"

export decimal_degrees="decimal{15,10}"
export unit_interval="float"
export dual_interval="float"


dir=$HOME/git/contactopensource/contactopensource/doc/concepts

$dir/access_tenant/rails-generate.sh
$dir/access_agent/rails-generate.sh
$dir/access_attribute/rails-generate.sh
$dir/access_operation/rails-generate.sh
$dir/access_occupancy/rails-generate.sh
$dir/access_assignment/rails-generate.sh
$dir/access_permission/rails-generate.sh
