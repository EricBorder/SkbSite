package com.kantiana.skb.service;

import com.kantiana.skb.model.Equipment;
import com.kantiana.skb.repository.BookingRepository;
import com.kantiana.skb.repository.EquipmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class EquipmentServiceImpl implements EquipmentService {
    @Autowired
    EquipmentRepository equipmentRepository;

    public void save(Equipment equipment){
        equipmentRepository.save(equipment);
    }

    public List<Equipment> findAllByEquipmentTypeIdOrderById(Long equipmentTypeId){
        return equipmentRepository.findAllByEquipmentTypeIdOrderById(equipmentTypeId);
    }

    public Equipment findById(Long id){
        return equipmentRepository.findById(id);
    }

    @Transactional
    public void deleteById(Long id){
        equipmentRepository.deleteById(id);
    }

    @Override
    public int countByEquipmentTypeId(Long equipmentTypeId) {
        return equipmentRepository.countByEquipmentTypeId(equipmentTypeId);
    }
}