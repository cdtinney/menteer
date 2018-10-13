<main id="main" role="main">
    <div class="section win-height non-bg">
        <div class="img"><img src="/assets/images/img1.jpg" height="612" width="658" alt="Menteer"></div>
        <div class="footer-box">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <section class="box">
                            <h1>Are you a mentor?</h1>
                            <a class="btn btn-default" href="/intakementor">be a mentor</a>
                        </section>
                    </div>
                    <div class="col-sm-3 col-sm-offset-6">
                        <section class="box">
                            <h1>Are you a mentee?</h1>
                            <a class="btn btn-default" href="/intakementee">be a mentee</a>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section win-height" id="about" style="min-height:670px;">
        <div class="container">
            <div class="row">
                <span class="circle color"></span>
                <span class="circle top right item"></span>
                <div class="col-sm-6 col-sm-offset-6">
                    <div class="text-block">
                        <h1>ABOUT</h1>

                        <?=nl2br($content[1]['description'])?>

                        <p>This app was made possibly with generous support from &nbsp;<a href="http://cira.ca/"><img src="/assets/images/calogo.jpg" width="150px"  /></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section win-height" id="story" style="min-height:670px;">
        <div class="container">
            <div class="row">
                <span class="circle top"></span>
                <span class="circle right color item"></span>
                <div class="col-sm-7">
                    <div class="text-block left">
                        <h1>STORY</h1>

                        <?=nl2br($content[2]['description'])?>

                         Learn more about <a href="http://www.careerskillsincubator.com/">CSCI</a>.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section win-height item-color last" id="login" style="min-height:800px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <section class="contact-box">
                        <h1>LOG IN <?=$this->session->userdata('demo')==1? '(DEMO)': ''; ?></h1>

                        <?php echo form_open("#",array('class'=>'sign-form','role'=>'form'));?>
                            <div id="login-error-message" class="alert alert-danger hide">Username or Password Incorrect</div>

                            <div id="login-activate-message" class="alert alert-success <?=$this->input->get('activated') ? '' : 'hide';?>">Account Activated</div>

                            <div class="form-group">
                                <label for="name">EMAIL</label>
                                <input type="text" class="form-control" id="login-email" value="<?=$remember_email?>" tabindex="-1">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="login-password" tabindex="1">
                            </div>
                            <div class="checkbox">
                                <input type="checkbox" id="check-1" tabindex="2"><label for="check-1">REMEMBER ME</label>
                            </div>
                            <div class="btn-holder">
                                <button id="submit-login" type="submit" class="btn btn-default">Submit</button>
                                <p class="help-block"><a href="#" data-toggle="modal" data-target="#forgot-modal">Forgot Password?</a><br>
                                <a href="/intakementor">Sign Up As a Mentor</a>
                                /
                                <a href="/intakementee">Sign Up As a Mentee</a>
                                </p>
                            </div>
                        <?php echo form_close();?>

                    </section>
                </div>
            </div>
        </div>