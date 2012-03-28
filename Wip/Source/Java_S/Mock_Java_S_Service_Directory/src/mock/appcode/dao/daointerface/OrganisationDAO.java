package mock.appcode.dao.daointerface;

import java.util.List;

import mock.appcode.common.valueobjects.OrganisationVO;

public interface OrganisationDAO {
	public List<OrganisationVO> getAll() throws Exception;
	public void addNew(OrganisationVO organisationVO) throws Exception;
	public void amend(OrganisationVO newOrganistation, String id) throws Exception;
	public List<OrganisationVO> getByActive() throws Exception;
	public List<OrganisationVO> getByInActive() throws Exception;
	public void setInActive(OrganisationVO newOrganistation, String id) throws Exception;
	public void setActive(OrganisationVO newOrganistation, String id) throws Exception;
}
