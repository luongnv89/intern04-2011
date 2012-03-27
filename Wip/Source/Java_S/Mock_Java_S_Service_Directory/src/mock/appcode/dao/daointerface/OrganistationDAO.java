package mock.appcode.dao.daointerface;

import java.util.List;

import mock.appcode.common.valueobjects.OrganistationVO;

public interface OrganistationDAO {
	public List<OrganistationVO> getAll() throws Exception;
	public void addNew(OrganistationVO organistationVO) throws Exception;
	public void amend(OrganistationVO newOrganistation, String id) throws Exception;
	public List<OrganistationVO> getByActive() throws Exception;
	public List<OrganistationVO> getByInActive() throws Exception;
	public void setInActive(OrganistationVO newOrganistation, String id) throws Exception;
	public void setActive(OrganistationVO newOrganistation, String id) throws Exception;
}
