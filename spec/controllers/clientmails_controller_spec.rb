require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ClientmailsController do

  # This should return the minimal set of attributes required to create a valid
  # Clientmail. As you add validations to Clientmail, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "mail" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ClientmailsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all clientmails as @clientmails" do
      clientmail = Clientmail.create! valid_attributes
      get :index, {}, valid_session
      assigns(:clientmails).should eq([clientmail])
    end
  end

  describe "GET show" do
    it "assigns the requested clientmail as @clientmail" do
      clientmail = Clientmail.create! valid_attributes
      get :show, {:id => clientmail.to_param}, valid_session
      assigns(:clientmail).should eq(clientmail)
    end
  end

  describe "GET new" do
    it "assigns a new clientmail as @clientmail" do
      get :new, {}, valid_session
      assigns(:clientmail).should be_a_new(Clientmail)
    end
  end

  describe "GET edit" do
    it "assigns the requested clientmail as @clientmail" do
      clientmail = Clientmail.create! valid_attributes
      get :edit, {:id => clientmail.to_param}, valid_session
      assigns(:clientmail).should eq(clientmail)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Clientmail" do
        expect {
          post :create, {:clientmail => valid_attributes}, valid_session
        }.to change(Clientmail, :count).by(1)
      end

      it "assigns a newly created clientmail as @clientmail" do
        post :create, {:clientmail => valid_attributes}, valid_session
        assigns(:clientmail).should be_a(Clientmail)
        assigns(:clientmail).should be_persisted
      end

      it "redirects to the created clientmail" do
        post :create, {:clientmail => valid_attributes}, valid_session
        response.should redirect_to(Clientmail.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved clientmail as @clientmail" do
        # Trigger the behavior that occurs when invalid params are submitted
        Clientmail.any_instance.stub(:save).and_return(false)
        post :create, {:clientmail => { "mail" => "invalid value" }}, valid_session
        assigns(:clientmail).should be_a_new(Clientmail)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Clientmail.any_instance.stub(:save).and_return(false)
        post :create, {:clientmail => { "mail" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested clientmail" do
        clientmail = Clientmail.create! valid_attributes
        # Assuming there are no other clientmails in the database, this
        # specifies that the Clientmail created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Clientmail.any_instance.should_receive(:update).with({ "mail" => "MyString" })
        put :update, {:id => clientmail.to_param, :clientmail => { "mail" => "MyString" }}, valid_session
      end

      it "assigns the requested clientmail as @clientmail" do
        clientmail = Clientmail.create! valid_attributes
        put :update, {:id => clientmail.to_param, :clientmail => valid_attributes}, valid_session
        assigns(:clientmail).should eq(clientmail)
      end

      it "redirects to the clientmail" do
        clientmail = Clientmail.create! valid_attributes
        put :update, {:id => clientmail.to_param, :clientmail => valid_attributes}, valid_session
        response.should redirect_to(clientmail)
      end
    end

    describe "with invalid params" do
      it "assigns the clientmail as @clientmail" do
        clientmail = Clientmail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Clientmail.any_instance.stub(:save).and_return(false)
        put :update, {:id => clientmail.to_param, :clientmail => { "mail" => "invalid value" }}, valid_session
        assigns(:clientmail).should eq(clientmail)
      end

      it "re-renders the 'edit' template" do
        clientmail = Clientmail.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Clientmail.any_instance.stub(:save).and_return(false)
        put :update, {:id => clientmail.to_param, :clientmail => { "mail" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested clientmail" do
      clientmail = Clientmail.create! valid_attributes
      expect {
        delete :destroy, {:id => clientmail.to_param}, valid_session
      }.to change(Clientmail, :count).by(-1)
    end

    it "redirects to the clientmails list" do
      clientmail = Clientmail.create! valid_attributes
      delete :destroy, {:id => clientmail.to_param}, valid_session
      response.should redirect_to(clientmails_url)
    end
  end

end
