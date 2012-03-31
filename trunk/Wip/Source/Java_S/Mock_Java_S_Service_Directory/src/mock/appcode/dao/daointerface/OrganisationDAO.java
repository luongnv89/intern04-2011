package mock.appcode.dao.daointerface;

import java.util.List;

import mock.appcode.common.valueobjects.OrganisationVO;

public interface OrganisationDAO {
	public List<OrganisationVO> getAllOrganisations() throws Exception;
	public void addNewOrganisation(OrganisationVO organisationVO ) throws Exception;
	public void amendOrganisation(OrganisationVO newOrganistation, String id) throws Exception;
	public void setOrganisationInActive(OrganisationVO newOrganistation, String id) throws Exception;
	public void setOrganisationActive(OrganisationVO newOrganistation, String id) throws Exception;
}
