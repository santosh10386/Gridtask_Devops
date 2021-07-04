# NOTE: Comment Unset Varaibles. Uncomment only those which you want to change

#aws_region="ap-south-1"

vpcid="vpc-8ae6"
subnetid="subnet-3bd53"
#i_type=""
key_name="mykey"
image="ami-0ad702671a549"

# for Profile based credential  ( By Default Profile Based Authentication is used )
#profile="myprofile"
#shared_credentials_file = "/Users/tf_user/.aws/creds"     # IF credential is not at default path, set path using this option

# for Manual based credential  EXPORT Credential As Environment Variable

# export AWS_ACCESS_KEY_ID="anaccesskey"
# export AWS_SECRET_ACCESS_KEY="asecretkey"
# Note: Remove profile keyword in provider.tf, if you are using manual way.

