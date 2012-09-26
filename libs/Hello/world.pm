
  # "package" is the namespace where the module's functionality/data resides. 
  # It dictates the name of the file if you want it to be "use"d.
  # If more than one word, it constrains the location of the module.
 
  package Hello::World;

  use strict;
 
  use warnings;

  our $VERSION = '1.00';
 
 
  use base 'Exporter'; 

  our @EXPORT = qw(hello);
 



   sub new {
   my($class, %args) = @_; 
   my $self = bless({}, $class); 
   my $target = exists $args{target} ? $args{target} : "world";
   $self->{target} = $target; 
   return $self;
  }
   
   
    sub target {
    my $self = shift;
    if( @_ ) {
        my $target = shift;
        $self->{target} = $target;
    }
 
    return $self->{target};
  }
    
    
  sub to_string {
   my $self = shift;
   return "Hello, $self->{target}!";
  }
  
  
  sub print {
   my $self = shift;
   print $self->to_string(), "\n";
  }
 


#routine is in process-orientate style.
  sub hello {
      my $target = shift;
      $target = 'world' unless defined $target;
 
      return "Hello, $target!\n";
  }

  1;