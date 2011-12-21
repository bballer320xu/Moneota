module Macros
    include Devise::TestHelpers
    
    # Authentication Helpers
    def login_user
        @user = Factory.create(:user)
        sign_in @user
    end
    
    
    # Standard Flash Messages
    def test_not_authorized_message
      flash.now[:error].should =~ /not authorized/
    end

    def test_updated_message
      flash.now[:notice].should =~ /updated/
    end

    def test_created_message
      flash.now[:notice].should =~ /created/
    end

    def test_sign_in_message
      flash.now[:alert].should =~ /sign in/
    end
    
    
    # Object Creation / Destroy test functions
    def test_create(object, attr, count_increment)
      lambda do
        post :create, :user => attr
      end.should change(object, :count).by(count_increment)
    end

    def test_destroy(object, id, count_increment)
      lambda do
        delete :destroy, :id => id
      end.should change(object, :count).by(count_increment)
    end
end
