////////////////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Items/SmartPointer.h"
#include "Items/MethodDescriptionParam.h"
#include "Items/MethodDescription.h"

using namespace std;
using namespace dxcodegen::Items;

////////////////////////////////////////////////////////////////////////////////

MethodDescription::MethodDescription()
{
}

////////////////////////////////////////////////////////////////////////////////

MethodDescription::~MethodDescription()
{
}

////////////////////////////////////////////////////////////////////////////////

void MethodDescription::SetType(const string& type)
{
  m_type = type;
}

////////////////////////////////////////////////////////////////////////////////

string& MethodDescription::GetType()
{
  return m_type;
}

////////////////////////////////////////////////////////////////////////////////

void MethodDescription::SetName(const string& name)
{
  m_name = name;
}

////////////////////////////////////////////////////////////////////////////////

string& MethodDescription::GetName()
{
  return m_name;
}

////////////////////////////////////////////////////////////////////////////////

void MethodDescription::AddParam(const MethodDescriptionParamPtr param)
{
  m_lstParams.push_back(param);
}

////////////////////////////////////////////////////////////////////////////////

unsigned int MethodDescription::GetParamsCount()
{
  return (unsigned int) m_lstParams.size();
}

////////////////////////////////////////////////////////////////////////////////

MethodDescriptionParamPtr MethodDescription::GetParam(unsigned int position)
{
  if (position < m_lstParams.size())
  {
    return m_lstParams[position];
  }
  else
  {
    return NULL;
  }
}

////////////////////////////////////////////////////////////////////////////////