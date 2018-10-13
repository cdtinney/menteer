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
class IntakeMentor extends CI_Controller {

	public function __construct()
    {
        parent::__construct();

        $this->load->model('Mentor_Questionnaire_model');

        $this->data = array();

    }

	public function index()
	{

        $this->data['page'] = 'intake';

        $this->data['questions'] = $this->Mentor_Questionnaire_model->get();
        $this->data['num_questions'] = count($this->data['questions']);

        $this->load->view('/intakementor/header',$this->data);
		$this->load->view('/intakementor/intake',$this->data);
        $this->load->view('/intakementor/footer',$this->data);
    }


}
