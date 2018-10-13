<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Menteer
 *
 * Original Code is Menteer, Released January 2015
 *
 * The initial developer of the Original Code is CSCI (CareerSkillsIncubator) with
 * the generous support from CIRA.ca (Community Investment Program)
 *
 *
 */

// questionnaire
class IntakeMentee extends CI_Controller {

	public function __construct()
    {
        parent::__construct();

        $this->load->model('Mentee_Questionnaire_model');

        $this->data = array();

    }

	public function index()
	{

        $this->data['page'] = 'intake';

        $this->data['questions'] = $this->Mentee_Questionnaire_model->get();
        $this->data['num_questions'] = count($this->data['questions']);

        $this->load->view('/intakementee/header',$this->data);
		$this->load->view('/intakementee/intake',$this->data);
        $this->load->view('/intakementee/footer',$this->data);
    }


}
